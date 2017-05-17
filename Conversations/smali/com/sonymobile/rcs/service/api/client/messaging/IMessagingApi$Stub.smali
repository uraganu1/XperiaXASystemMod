.class public abstract Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;
.super Landroid/os/Binder;
.source "IMessagingApi.java"

# interfaces
.implements Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-eqz p0, :cond_1

    const-string/jumbo v1, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 29
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-nez v0, :cond_2

    .line 33
    :cond_0
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    .line 27
    .end local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    return-object v1

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_2
    instance-of v1, v0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

    if-eqz v1, :cond_0

    .line 31
    check-cast v0, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi;

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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 330
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v14

    return v14

    :sswitch_0
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 45
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v14, 0x1

    return v14

    :sswitch_1
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 50
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-nez v14, :cond_0

    const/4 v5, 0x0

    .line 61
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-nez v14, :cond_1

    const/4 v9, 0x0

    .line 62
    .local v9, "_arg2":Z
    :goto_1
    invoke-virtual {p0, v3, v5, v9}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->transferFile(Ljava/lang/String;Landroid/net/Uri;Z)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v11

    .line 63
    .local v11, "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-nez v11, :cond_2

    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 65
    const/4 v14, 0x1

    return v14

    .line 55
    .end local v9    # "_arg2":Z
    .end local v11    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :cond_0
    sget-object v14, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .local v5, "_arg1":Landroid/net/Uri;
    goto :goto_0

    .end local v5    # "_arg1":Landroid/net/Uri;
    :cond_1
    const/4 v9, 0x1

    .line 61
    goto :goto_1

    .line 64
    .restart local v9    # "_arg2":Z
    .restart local v11    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :cond_2
    invoke-interface {v11}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    goto :goto_2

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":Z
    .end local v11    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :sswitch_2
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 69
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 72
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->getFileTransferSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v11

    .line 73
    .restart local v11    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-nez v11, :cond_3

    const/4 v14, 0x0

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 75
    const/4 v14, 0x1

    return v14

    .line 74
    :cond_3
    invoke-interface {v11}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    goto :goto_3

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :sswitch_3
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 79
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 82
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->getFileTransferSessionsWith(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 83
    .local v12, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 85
    const/4 v14, 0x1

    return v14

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_4
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 89
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->getFileTransferSessions()Ljava/util/List;

    move-result-object v12

    .line 91
    .restart local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 93
    const/4 v14, 0x1

    return v14

    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_5
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 97
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 101
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v6}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->initiateOne2OneChatSession(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v10

    .line 103
    .local v10, "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-nez v10, :cond_4

    const/4 v14, 0x0

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 105
    const/4 v14, 0x1

    return v14

    .line 104
    :cond_4
    invoke-interface {v10}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    goto :goto_4

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :sswitch_6
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 109
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 113
    .local v4, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 114
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v4, v6}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->initiateAdhocGroupChatSession(Ljava/util/List;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v10

    .line 115
    .restart local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-nez v10, :cond_5

    const/4 v14, 0x0

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 117
    const/4 v14, 0x1

    return v14

    .line 116
    :cond_5
    invoke-interface {v10}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    goto :goto_5

    .end local v4    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :sswitch_7
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 121
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 124
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->rejoinGroupChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v10

    .line 125
    .restart local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-nez v10, :cond_6

    const/4 v14, 0x0

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 127
    const/4 v14, 0x1

    return v14

    .line 126
    :cond_6
    invoke-interface {v10}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    goto :goto_6

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :sswitch_8
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 131
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 134
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->restartGroupChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v10

    .line 135
    .restart local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-nez v10, :cond_7

    const/4 v14, 0x0

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 137
    const/4 v14, 0x1

    return v14

    .line 136
    :cond_7
    invoke-interface {v10}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    goto :goto_7

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :sswitch_9
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 141
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 144
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->getChatSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v10

    .line 145
    .restart local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-nez v10, :cond_8

    const/4 v14, 0x0

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 147
    const/4 v14, 0x1

    return v14

    .line 146
    :cond_8
    invoke-interface {v10}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    goto :goto_8

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :sswitch_a
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 151
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 154
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->getChatSessionsWith(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 155
    .restart local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 157
    const/4 v14, 0x1

    return v14

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_b
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 161
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->getChatSessions()Ljava/util/List;

    move-result-object v12

    .line 163
    .restart local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 165
    const/4 v14, 0x1

    return v14

    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_c
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 169
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->getGroupChatSessions()Ljava/util/List;

    move-result-object v12

    .line 171
    .restart local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 173
    const/4 v14, 0x1

    return v14

    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_d
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 177
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 180
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->getGroupChatSessionsWith(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 181
    .restart local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 183
    const/4 v14, 0x1

    return v14

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v12    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_e
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 187
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 191
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 193
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 194
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v6, v8}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->setMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    const/4 v14, 0x1

    return v14

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 200
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;

    move-result-object v2

    .line 203
    .local v2, "_arg0":Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->addMessageDeliveryListener(Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;)V

    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    const/4 v14, 0x1

    return v14

    .end local v2    # "_arg0":Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;
    :sswitch_10
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 209
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;

    move-result-object v2

    .line 212
    .restart local v2    # "_arg0":Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->removeMessageDeliveryListener(Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;)V

    .line 213
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    const/4 v14, 0x1

    return v14

    .end local v2    # "_arg0":Lcom/sonymobile/rcs/service/api/client/messaging/IMessageDeliveryListener;
    :sswitch_11
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 218
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;

    move-result-object v1

    .line 221
    .local v1, "_arg0":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->addFileTransferSetupListener(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;)V

    .line 222
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    const/4 v14, 0x1

    return v14

    .end local v1    # "_arg0":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;
    :sswitch_12
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 227
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;

    move-result-object v1

    .line 230
    .restart local v1    # "_arg0":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->removeFileTransferSetupListener(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;)V

    .line 231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    const/4 v14, 0x1

    return v14

    .end local v1    # "_arg0":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;
    :sswitch_13
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 236
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 240
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 242
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 243
    .restart local v8    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v6, v8}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->resendChatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v10

    .line 244
    .restart local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-nez v10, :cond_9

    const/4 v14, 0x0

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 246
    const/4 v14, 0x1

    return v14

    .line 245
    :cond_9
    invoke-interface {v10}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    goto :goto_9

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :sswitch_14
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 250
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 254
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-nez v14, :cond_a

    const/4 v7, 0x0

    .line 255
    .local v7, "_arg1":Z
    :goto_a
    invoke-virtual {p0, v3, v7}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->resendFile(Ljava/lang/String;Z)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v11

    .line 256
    .restart local v11    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    if-nez v11, :cond_b

    const/4 v14, 0x0

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 258
    const/4 v14, 0x1

    return v14

    .end local v7    # "_arg1":Z
    .end local v11    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :cond_a
    const/4 v7, 0x1

    .line 254
    goto :goto_a

    .line 257
    .restart local v7    # "_arg1":Z
    .restart local v11    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :cond_b
    invoke-interface {v11}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    goto :goto_b

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Z
    .end local v11    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :sswitch_15
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 262
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->getGroupChatSessionsForAutoRejoin()Ljava/util/List;

    move-result-object v13

    .line 264
    .local v13, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 266
    const/4 v14, 0x1

    return v14

    .end local v13    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_16
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 270
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->clearGroupChatSessions()V

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    const/4 v14, 0x1

    return v14

    :sswitch_17
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 277
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 281
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 283
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 284
    .restart local v8    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v6, v8}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->initiateQueuedOne2OneChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v10

    .line 285
    .restart local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    if-nez v10, :cond_c

    const/4 v14, 0x0

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 287
    const/4 v14, 0x1

    return v14

    .line 286
    :cond_c
    invoke-interface {v10}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    goto :goto_c

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :sswitch_18
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 291
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 295
    .restart local v4    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 297
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 298
    .restart local v8    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v4, v6, v8}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->initiateQueuedAdhocGroupChatSession(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v10

    .line 299
    .restart local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    if-nez v10, :cond_d

    const/4 v14, 0x0

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 301
    const/4 v14, 0x1

    return v14

    .line 300
    :cond_d
    invoke-interface {v10}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    goto :goto_d

    .end local v4    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    :sswitch_19
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 305
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 309
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-nez v14, :cond_e

    const/4 v7, 0x0

    .line 311
    .restart local v7    # "_arg1":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 312
    .restart local v8    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v7, v8}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->sendQueuedFile(Ljava/lang/String;ZLjava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v11

    .line 313
    .restart local v11    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    if-nez v11, :cond_f

    const/4 v14, 0x0

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 315
    const/4 v14, 0x1

    return v14

    .end local v7    # "_arg1":Z
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v11    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :cond_e
    const/4 v7, 0x1

    .line 309
    goto :goto_e

    .line 314
    .restart local v7    # "_arg1":Z
    .restart local v8    # "_arg2":Ljava/lang/String;
    .restart local v11    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :cond_f
    invoke-interface {v11}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    goto :goto_f

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Z
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v11    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :sswitch_1a
    const-string/jumbo v14, "com.sonymobile.rcs.service.api.client.messaging.IMessagingApi"

    .line 319
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 323
    .restart local v4    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 324
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v4, v6}, Lcom/sonymobile/rcs/service/api/client/messaging/IMessagingApi$Stub;->inviteParticipants(Ljava/util/List;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;

    move-result-object v10

    .line 325
    .restart local v10    # "_result":Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    if-nez v10, :cond_10

    const/4 v14, 0x0

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 327
    const/4 v14, 0x1

    return v14

    .line 326
    :cond_10
    invoke-interface {v10}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatSession;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    goto :goto_10

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
