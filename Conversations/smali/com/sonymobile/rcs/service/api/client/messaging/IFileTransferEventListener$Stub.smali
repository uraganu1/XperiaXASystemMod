.class public abstract Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener$Stub;
.super Landroid/os/Binder;
.source "IFileTransferEventListener.java"

# interfaces
.implements Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferEventListener"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-eqz p0, :cond_1

    const-string/jumbo v1, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferEventListener"

    .line 29
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-nez v0, :cond_2

    .line 33
    :cond_0
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    .line 27
    .end local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    return-object v1

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_2
    instance-of v1, v0, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;

    if-eqz v1, :cond_0

    .line 31
    check-cast v0, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener;

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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    :sswitch_0
    const-string/jumbo v10, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferEventListener"

    .line 45
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v10, 0x1

    return v10

    :sswitch_1
    const-string/jumbo v10, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferEventListener"

    .line 50
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener$Stub;->handleSessionStarted()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    const/4 v10, 0x1

    return v10

    :sswitch_2
    const-string/jumbo v10, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferEventListener"

    .line 57
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 60
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener$Stub;->handleSessionAborted(I)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    const/4 v10, 0x1

    return v10

    .end local v0    # "_arg0":I
    :sswitch_3
    const-string/jumbo v10, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferEventListener"

    .line 66
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener$Stub;->handleSessionTerminatedByRemote()V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    const/4 v10, 0x1

    return v10

    :sswitch_4
    const-string/jumbo v10, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferEventListener"

    .line 73
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 77
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 78
    .local v6, "_arg1":J
    invoke-virtual {p0, v2, v3, v6, v7}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener$Stub;->handleTransferProgress(JJ)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    const/4 v10, 0x1

    return v10

    .end local v2    # "_arg0":J
    .end local v6    # "_arg1":J
    :sswitch_5
    const-string/jumbo v10, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferEventListener"

    .line 84
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener$Stub;->handleTransferError(I)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    const/4 v10, 0x1

    return v10

    .end local v0    # "_arg0":I
    :sswitch_6
    const-string/jumbo v10, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferEventListener"

    .line 93
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-nez v10, :cond_0

    const/4 v1, 0x0

    .line 102
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 105
    .local v8, "_arg2":J
    invoke-virtual {p0, v1, v5, v8, v9}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener$Stub;->handleFileTransfered(Landroid/net/Uri;Ljava/lang/String;J)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    const/4 v10, 0x1

    return v10

    .line 96
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":J
    :cond_0
    sget-object v10, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .local v1, "_arg0":Landroid/net/Uri;
    goto :goto_0

    .end local v1    # "_arg0":Landroid/net/Uri;
    :sswitch_7
    const-string/jumbo v10, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferEventListener"

    .line 111
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener$Stub;->handleFileUploaded(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    const/4 v10, 0x1

    return v10

    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v10, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferEventListener"

    .line 120
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener$Stub;->handleFileTransferPaused()V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    const/4 v10, 0x1

    return v10

    :sswitch_9
    const-string/jumbo v10, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferEventListener"

    .line 127
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener$Stub;->handleFileTransferResumed()V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    const/4 v10, 0x1

    return v10

    :sswitch_a
    const-string/jumbo v10, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferEventListener"

    .line 134
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener$Stub;->handleFileTransferAcceptCalled()V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    const/4 v10, 0x1

    return v10

    :sswitch_b
    const-string/jumbo v10, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferEventListener"

    .line 141
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferEventListener$Stub;->handleFileTransferRejectCalled()V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    const/4 v10, 0x1

    return v10

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
