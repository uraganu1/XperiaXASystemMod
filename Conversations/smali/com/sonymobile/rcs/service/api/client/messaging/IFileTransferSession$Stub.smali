.class public abstract Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;
.super Landroid/os/Binder;
.source "IFileTransferSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSession"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-eqz p0, :cond_1

    const-string/jumbo v1, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSession"

    .line 29
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-nez v0, :cond_2

    .line 33
    :cond_0
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    .line 27
    .end local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    return-object v1

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_2
    instance-of v1, v0, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    if-eqz v1, :cond_0

    .line 31
    check-cast v0, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

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
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 206
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    :sswitch_0
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSession"

    .line 45
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v9

    :sswitch_1
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSession"

    .line 50
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->getSessionID()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return v9

    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSession"

    .line 58
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->getMessageID()Ljava/lang/String;

    move-result-object v4

    .line 60
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return v9

    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSession"

    .line 66
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->getRemoteContact()Ljava/lang/String;

    move-result-object v4

    .line 68
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return v9

    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSession"

    .line 74
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->getContacts()Ljava/util/List;

    move-result-object v5

    .line 76
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 78
    return v9

    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_5
    const-string/jumbo v10, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSession"

    .line 82
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->isGroupTransfer()Z

    move-result v6

    .line 84
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-nez v6, :cond_0

    :goto_0
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return v9

    :cond_0
    move v8, v9

    .line 85
    goto :goto_0

    .end local v6    # "_result":Z
    :sswitch_6
    const-string/jumbo v10, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSession"

    .line 90
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->isHttpTransfer()Z

    move-result v6

    .line 92
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-nez v6, :cond_1

    :goto_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return v9

    :cond_1
    move v8, v9

    .line 93
    goto :goto_1

    .end local v6    # "_result":Z
    :sswitch_7
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSession"

    .line 98
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->getChatID()Ljava/lang/String;

    move-result-object v4

    .line 100
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v9

    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSession"

    .line 106
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->getChatSessionID()Ljava/lang/String;

    move-result-object v4

    .line 108
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return v9

    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v10, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSession"

    .line 114
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->isSessionRemoteOriginated()Z

    move-result v6

    .line 116
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-nez v6, :cond_2

    :goto_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    return v9

    :cond_2
    move v8, v9

    .line 117
    goto :goto_2

    .end local v6    # "_result":Z
    :sswitch_a
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSession"

    .line 122
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->getSessionState()I

    move-result v1

    .line 124
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    return v9

    .end local v1    # "_result":I
    :sswitch_b
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSession"

    .line 130
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->getFilename()Ljava/lang/String;

    move-result-object v4

    .line 132
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    return v9

    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSession"

    .line 138
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->getFilesize()J

    move-result-wide v2

    .line 140
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 142
    return v9

    .end local v2    # "_result":J
    :sswitch_d
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSession"

    .line 146
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->getFileThumbnail()[B

    move-result-object v7

    .line 148
    .local v7, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 150
    return v9

    .end local v7    # "_result":[B
    :sswitch_e
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSession"

    .line 154
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->acceptSession()V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    return v9

    :sswitch_f
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSession"

    .line 161
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->rejectSession()V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    return v9

    :sswitch_10
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSession"

    .line 168
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->cancelSession()V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    return v9

    :sswitch_11
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSession"

    .line 175
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->pauseSession()V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    return v9

    :sswitch_12
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSession"

    .line 182
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->resumeSession()V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    return v9

    :sswitch_13
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSession"

    .line 189
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;

    move-result-object v0

    .line 192
    .local v0, "_arg0":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->addSessionListener(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    return v9

    .end local v0    # "_arg0":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    :sswitch_14
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSession"

    .line 198
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;

    move-result-object v0

    .line 201
    .restart local v0    # "_arg0":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->removeSessionListener(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
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
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
