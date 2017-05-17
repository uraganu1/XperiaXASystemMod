.class public abstract Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;
.super Landroid/os/Binder;
.source "IChatSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-eqz p0, :cond_1

    const-string/jumbo v1, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 29
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-nez v0, :cond_2

    .line 33
    :cond_0
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    .line 27
    .end local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    return-object v1

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_2
    instance-of v1, v0, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    if-eqz v1, :cond_0

    .line 31
    check-cast v0, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

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

    .line 326
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v15

    return v15

    :sswitch_0
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 45
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v15, 0x1

    return v15

    :sswitch_1
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 50
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->getSessionID()Ljava/lang/String;

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
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 58
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->getChatID()Ljava/lang/String;

    move-result-object v12

    .line 60
    .restart local v12    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    const/4 v15, 0x1

    return v15

    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 66
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->getRemoteContact()Ljava/lang/String;

    move-result-object v12

    .line 68
    .restart local v12    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    const/4 v15, 0x1

    return v15

    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 74
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->getSessionState()I

    move-result v9

    .line 76
    .local v9, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v15, 0x1

    return v15

    .end local v9    # "_result":I
    :sswitch_5
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 82
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->isGroupChat()Z

    move-result v14

    .line 84
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-nez v14, :cond_0

    const/4 v15, 0x0

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    const/4 v15, 0x1

    return v15

    :cond_0
    const/4 v15, 0x1

    .line 85
    goto :goto_0

    .end local v14    # "_result":Z
    :sswitch_6
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 90
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->isStoreAndForward()Z

    move-result v14

    .line 92
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-nez v14, :cond_1

    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    const/4 v15, 0x1

    return v15

    :cond_1
    const/4 v15, 0x1

    .line 93
    goto :goto_1

    .end local v14    # "_result":Z
    :sswitch_7
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 98
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->getFirstMessage()Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v11

    .line 100
    .local v11, "_result":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-nez v11, :cond_2

    const/4 v15, 0x0

    .line 106
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    :goto_2
    const/4 v15, 0x1

    return v15

    :cond_2
    const/4 v15, 0x1

    .line 102
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v15, 0x1

    .line 103
    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v15}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .end local v11    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    :sswitch_8
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 112
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->getSubject()Ljava/lang/String;

    move-result-object v12

    .line 114
    .restart local v12    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    const/4 v15, 0x1

    return v15

    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 120
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->acceptSession()V

    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    const/4 v15, 0x1

    return v15

    :sswitch_a
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 127
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->rejectSession()V

    .line 129
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    const/4 v15, 0x1

    return v15

    :sswitch_b
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 134
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->cancelSession()V

    .line 136
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    const/4 v15, 0x1

    return v15

    :sswitch_c
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 141
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->getParticipants()Ljava/util/List;

    move-result-object v13

    .line 143
    .local v13, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 145
    const/4 v15, 0x1

    return v15

    .end local v13    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_d
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 149
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->getMaxParticipants()I

    move-result v9

    .line 151
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    const/4 v15, 0x1

    return v15

    .end local v9    # "_result":I
    :sswitch_e
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 157
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->getMaxParticipantsToBeAdded()I

    move-result v9

    .line 159
    .restart local v9    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    const/4 v15, 0x1

    return v15

    .end local v9    # "_result":I
    :sswitch_f
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 165
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->addParticipant(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    const/4 v15, 0x1

    return v15

    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 174
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 178
    .local v5, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 179
    .local v7, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->addParticipants(Ljava/util/List;Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    const/4 v15, 0x1

    return v15

    .end local v5    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "_arg1":Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 185
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 188
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->sendMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 189
    .restart local v12    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    const/4 v15, 0x1

    return v15

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 195
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 198
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->resendMessage(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    const/4 v15, 0x1

    return v15

    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 204
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->isGeolocSupported()Z

    move-result v14

    .line 206
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    if-nez v14, :cond_3

    const/4 v15, 0x0

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    const/4 v15, 0x1

    return v15

    :cond_3
    const/4 v15, 0x1

    .line 207
    goto :goto_3

    .end local v14    # "_result":Z
    :sswitch_14
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 212
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-nez v15, :cond_4

    const/4 v2, 0x0

    .line 220
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->sendGeoloc(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;)Ljava/lang/String;

    move-result-object v12

    .line 221
    .restart local v12    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    const/4 v15, 0x1

    return v15

    .line 215
    .end local v12    # "_result":Ljava/lang/String;
    :cond_4
    sget-object v15, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    .local v2, "_arg0":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;
    goto :goto_4

    .end local v2    # "_arg0":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;
    :sswitch_15
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 227
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->isFileTransferSupported()Z

    move-result v14

    .line 229
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    if-nez v14, :cond_5

    const/4 v15, 0x0

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    const/4 v15, 0x1

    return v15

    :cond_5
    const/4 v15, 0x1

    .line 230
    goto :goto_5

    .end local v14    # "_result":Z
    :sswitch_16
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 235
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->isSessionRemoteOriginated()Z

    move-result v14

    .line 237
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    if-nez v14, :cond_6

    const/4 v15, 0x0

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    const/4 v15, 0x1

    return v15

    :cond_6
    const/4 v15, 0x1

    .line 238
    goto :goto_6

    .end local v14    # "_result":Z
    :sswitch_17
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 243
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-nez v15, :cond_7

    const/4 v1, 0x0

    .line 252
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-nez v15, :cond_8

    const/4 v8, 0x0

    .line 253
    .local v8, "_arg1":Z
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v8}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->sendFile(Landroid/net/Uri;Z)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v10

    .line 254
    .local v10, "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    if-nez v10, :cond_9

    const/4 v15, 0x0

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 256
    const/4 v15, 0x1

    return v15

    .line 246
    .end local v8    # "_arg1":Z
    .end local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :cond_7
    sget-object v15, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .local v1, "_arg0":Landroid/net/Uri;
    goto :goto_7

    .end local v1    # "_arg0":Landroid/net/Uri;
    :cond_8
    const/4 v8, 0x1

    .line 252
    goto :goto_8

    .line 255
    .restart local v8    # "_arg1":Z
    .restart local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :cond_9
    invoke-interface {v10}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    goto :goto_9

    .end local v8    # "_arg1":Z
    .end local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :sswitch_18
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 260
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-nez v15, :cond_a

    const/4 v6, 0x0

    .line 263
    .local v6, "_arg0":Z
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->setIsComposingStatus(Z)V

    .line 264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    const/4 v15, 0x1

    return v15

    .end local v6    # "_arg0":Z
    :cond_a
    const/4 v6, 0x1

    .line 262
    goto :goto_a

    :sswitch_19
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 269
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 273
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 274
    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->setMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    const/4 v15, 0x1

    return v15

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 280
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;

    move-result-object v3

    .line 283
    .local v3, "_arg0":Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->addSessionListener(Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;)V

    .line 284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    const/4 v15, 0x1

    return v15

    .end local v3    # "_arg0":Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;
    :sswitch_1b
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 289
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;

    move-result-object v3

    .line 292
    .restart local v3    # "_arg0":Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->removeSessionListener(Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;)V

    .line 293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    const/4 v15, 0x1

    return v15

    .end local v3    # "_arg0":Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;
    :sswitch_1c
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 298
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 301
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->sendQueuedMessage(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    const/4 v15, 0x1

    return v15

    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 307
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 311
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-nez v15, :cond_b

    const/4 v8, 0x0

    .line 312
    .restart local v8    # "_arg1":Z
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->sendQueuedFile(Ljava/lang/String;Z)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v10

    .line 313
    .restart local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    if-nez v10, :cond_c

    const/4 v15, 0x0

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 315
    const/4 v15, 0x1

    return v15

    .end local v8    # "_arg1":Z
    .end local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :cond_b
    const/4 v8, 0x1

    .line 311
    goto :goto_b

    .line 314
    .restart local v8    # "_arg1":Z
    .restart local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :cond_c
    invoke-interface {v10}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    goto :goto_c

    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Z
    .end local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :sswitch_1e
    const-string/jumbo v15, "com.sonymobile.rcs.service.api.client.messaging.IChatSession"

    .line 319
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession$Stub;->isStoreAndForwardNotif()Z

    move-result v14

    .line 321
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    if-nez v14, :cond_d

    const/4 v15, 0x0

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    const/4 v15, 0x1

    return v15

    :cond_d
    const/4 v15, 0x1

    .line 322
    goto :goto_d

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
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
