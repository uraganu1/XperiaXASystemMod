.class public abstract Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener$Stub;
.super Landroid/os/Binder;
.source "IChatEventListener.java"

# interfaces
.implements Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sonymobile.rcs.service.api.client.messaging.IChatEventListener"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-eqz p0, :cond_1

    const-string/jumbo v1, "com.sonymobile.rcs.service.api.client.messaging.IChatEventListener"

    .line 29
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-nez v0, :cond_2

    .line 33
    :cond_0
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    .line 27
    .end local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    return-object v1

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_2
    instance-of v1, v0, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;

    if-eqz v1, :cond_0

    .line 31
    check-cast v0, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener;

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
    .locals 9
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
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    :sswitch_0
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IChatEventListener"

    .line 45
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v7

    :sswitch_1
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IChatEventListener"

    .line 50
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener$Stub;->handleSessionStarted()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    return v7

    :sswitch_2
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IChatEventListener"

    .line 57
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 60
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener$Stub;->handleSessionAborted(I)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    return v7

    .end local v0    # "_arg0":I
    :sswitch_3
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IChatEventListener"

    .line 66
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener$Stub;->handleSessionTerminatedByRemote()V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    return v7

    :sswitch_4
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IChatEventListener"

    .line 73
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-nez v8, :cond_0

    const/4 v2, 0x0

    .line 81
    :goto_0
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener$Stub;->handleReceiveMessage(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    return v7

    .line 76
    :cond_0
    sget-object v8, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    .local v2, "_arg0":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    goto :goto_0

    .end local v2    # "_arg0":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    :sswitch_5
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IChatEventListener"

    .line 87
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 90
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener$Stub;->handleImError(I)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    return v7

    .end local v0    # "_arg0":I
    :sswitch_6
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IChatEventListener"

    .line 96
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-nez v8, :cond_1

    .line 101
    .local v5, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v3, v5}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener$Stub;->handleIsComposingEvent(Ljava/lang/String;Z)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    return v7

    .end local v5    # "_arg1":Z
    :cond_1
    move v5, v7

    .line 100
    goto :goto_1

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IChatEventListener"

    .line 107
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v3, v4, v6}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener$Stub;->handleConferenceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    return v7

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IChatEventListener"

    .line 120
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 124
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 125
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener$Stub;->handleMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    return v7

    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IChatEventListener"

    .line 131
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener$Stub;->handleAddParticipantSuccessful()V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    return v7

    :sswitch_a
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IChatEventListener"

    .line 138
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 141
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener$Stub;->handleAddParticipantFailed(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    return v7

    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.messaging.IChatEventListener"

    .line 147
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-nez v8, :cond_2

    const/4 v1, 0x0

    .line 155
    :goto_2
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/api/client/messaging/IChatEventListener$Stub;->handleReceiveGeoloc(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    return v7

    .line 150
    :cond_2
    sget-object v8, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;

    .local v1, "_arg0":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;
    goto :goto_2

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
