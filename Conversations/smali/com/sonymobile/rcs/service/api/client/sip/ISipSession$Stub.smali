.class public abstract Lcom/sonymobile/rcs/service/api/client/sip/ISipSession$Stub;
.super Landroid/os/Binder;
.source "ISipSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/service/api/client/sip/ISipSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/sip/ISipSession;
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

    const-string/jumbo v0, "com.sonymobile.rcs.service.api.client.sip.ISipSession"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    :sswitch_0
    const-string/jumbo v9, "com.sonymobile.rcs.service.api.client.sip.ISipSession"

    .line 45
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v9, 0x1

    return v9

    :sswitch_1
    const-string/jumbo v9, "com.sonymobile.rcs.service.api.client.sip.ISipSession"

    .line 50
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSession$Stub;->getSessionID()Ljava/lang/String;

    move-result-object v8

    .line 52
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    const/4 v9, 0x1

    return v9

    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v9, "com.sonymobile.rcs.service.api.client.sip.ISipSession"

    .line 58
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSession$Stub;->getRemoteContact()Ljava/lang/String;

    move-result-object v8

    .line 60
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    const/4 v9, 0x1

    return v9

    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v9, "com.sonymobile.rcs.service.api.client.sip.ISipSession"

    .line 66
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSession$Stub;->getSessionState()I

    move-result v7

    .line 68
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    const/4 v9, 0x1

    return v9

    .end local v7    # "_result":I
    :sswitch_4
    const-string/jumbo v9, "com.sonymobile.rcs.service.api.client.sip.ISipSession"

    .line 74
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSession$Stub;->getFeatureTag()Ljava/lang/String;

    move-result-object v8

    .line 76
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    const/4 v9, 0x1

    return v9

    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v9, "com.sonymobile.rcs.service.api.client.sip.ISipSession"

    .line 82
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSession$Stub;->getRemoteSdp()Ljava/lang/String;

    move-result-object v8

    .line 84
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    const/4 v9, 0x1

    return v9

    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v9, "com.sonymobile.rcs.service.api.client.sip.ISipSession"

    .line 90
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSession$Stub;->acceptSession()V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    const/4 v9, 0x1

    return v9

    :sswitch_7
    const-string/jumbo v9, "com.sonymobile.rcs.service.api.client.sip.ISipSession"

    .line 97
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSession$Stub;->rejectSession()V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    const/4 v9, 0x1

    return v9

    :sswitch_8
    const-string/jumbo v9, "com.sonymobile.rcs.service.api.client.sip.ISipSession"

    .line 104
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSession$Stub;->cancelSession()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    const/4 v9, 0x1

    return v9

    :sswitch_9
    const-string/jumbo v9, "com.sonymobile.rcs.service.api.client.sip.ISipSession"

    .line 111
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;

    move-result-object v0

    .line 114
    .local v0, "_arg0":Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSession$Stub;->addSessionListener(Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    const/4 v9, 0x1

    return v9

    .end local v0    # "_arg0":Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;
    :sswitch_a
    const-string/jumbo v9, "com.sonymobile.rcs.service.api.client.sip.ISipSession"

    .line 120
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;

    move-result-object v0

    .line 123
    .restart local v0    # "_arg0":Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSession$Stub;->removeSessionListener(Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    const/4 v9, 0x1

    return v9

    .end local v0    # "_arg0":Lcom/sonymobile/rcs/service/api/client/sip/ISipSessionEventListener;
    :sswitch_b
    const-string/jumbo v9, "com.sonymobile.rcs.service.api.client.sip.ISipSession"

    .line 129
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-nez v9, :cond_0

    const/4 v2, 0x0

    .line 133
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-nez v9, :cond_1

    const/4 v5, 0x0

    .line 134
    .local v5, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v2, v5}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSession$Stub;->setMsrpReportOptions(ZZ)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    const/4 v9, 0x1

    return v9

    .end local v2    # "_arg0":Z
    .end local v5    # "_arg1":Z
    :cond_0
    const/4 v2, 0x1

    .line 131
    goto :goto_0

    .restart local v2    # "_arg0":Z
    :cond_1
    const/4 v5, 0x1

    .line 133
    goto :goto_1

    .end local v2    # "_arg0":Z
    :sswitch_c
    const-string/jumbo v9, "com.sonymobile.rcs.service.api.client.sip.ISipSession"

    .line 140
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 144
    .local v3, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v4, v6}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSession$Stub;->sendMsrpData([BLjava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    const/4 v9, 0x1

    return v9

    .end local v3    # "_arg0":[B
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v9, "com.sonymobile.rcs.service.api.client.sip.ISipSession"

    .line 153
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 158
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v4}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSession$Stub;->sendDeliveryReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    const/4 v9, 0x1

    return v9

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v9, "com.sonymobile.rcs.service.api.client.sip.ISipSession"

    .line 164
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 169
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v4}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSession$Stub;->sendCpimMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    const/4 v9, 0x1

    return v9

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
