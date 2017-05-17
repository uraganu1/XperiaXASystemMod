.class public abstract Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener$Stub;
.super Landroid/os/Binder;
.source "IIPCallEventListener.java"

# interfaces
.implements Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallEventListener"

    .line 20
    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-eqz p0, :cond_1

    const-string/jumbo v1, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallEventListener"

    .line 31
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-nez v0, :cond_2

    .line 35
    :cond_0
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    .line 29
    .end local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    return-object v1

    .line 32
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_2
    instance-of v1, v0, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;

    if-eqz v1, :cond_0

    .line 33
    check-cast v0, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v5, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_0
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallEventListener"

    .line 47
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v5

    :sswitch_1
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallEventListener"

    .line 52
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener$Stub;->handleSessionStarted()V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    return v5

    :sswitch_2
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallEventListener"

    .line 59
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener$Stub;->handleSessionAborted(I)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    return v5

    .end local v0    # "_arg0":I
    :sswitch_3
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallEventListener"

    .line 68
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener$Stub;->handleSessionTerminatedByRemote()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    return v5

    :sswitch_4
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallEventListener"

    .line 75
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 81
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 82
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener$Stub;->handleAddVideo(Ljava/lang/String;II)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    return v5

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_5
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallEventListener"

    .line 88
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener$Stub;->handleRemoveVideo()V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    return v5

    :sswitch_6
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallEventListener"

    .line 95
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener$Stub;->handleAddVideoAccepted()V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    return v5

    :sswitch_7
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallEventListener"

    .line 102
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener$Stub;->handleRemoveVideoAccepted()V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    return v5

    :sswitch_8
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallEventListener"

    .line 109
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener$Stub;->handleAddVideoAborted(I)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    return v5

    .end local v0    # "_arg0":I
    :sswitch_9
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallEventListener"

    .line 118
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 121
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener$Stub;->handleRemoveVideoAborted(I)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    return v5

    .end local v0    # "_arg0":I
    :sswitch_a
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallEventListener"

    .line 127
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener$Stub;->handleCallHold()V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    return v5

    :sswitch_b
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallEventListener"

    .line 134
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener$Stub;->handleCallResume()V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    return v5

    :sswitch_c
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallEventListener"

    .line 141
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener$Stub;->handleCallHoldAccepted()V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    return v5

    :sswitch_d
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallEventListener"

    .line 148
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener$Stub;->handleCallResumeAccepted()V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    return v5

    :sswitch_e
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallEventListener"

    .line 155
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 158
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener$Stub;->handleCallHoldAborted(I)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    return v5

    .end local v0    # "_arg0":I
    :sswitch_f
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallEventListener"

    .line 164
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 167
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener$Stub;->handleCallResumeAborted(I)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    return v5

    .end local v0    # "_arg0":I
    :sswitch_10
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallEventListener"

    .line 173
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 176
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener$Stub;->handleCallError(I)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    return v5

    .end local v0    # "_arg0":I
    :sswitch_11
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallEventListener"

    .line 182
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener$Stub;->handle486Busy()V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    return v5

    :sswitch_12
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.ipcall.IIPCallEventListener"

    .line 189
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 193
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 194
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/rcs/service/api/client/ipcall/IIPCallEventListener$Stub;->handleVideoResized(II)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    return v5

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
