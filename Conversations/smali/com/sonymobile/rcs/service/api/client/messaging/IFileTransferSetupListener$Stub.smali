.class public abstract Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener$Stub;
.super Landroid/os/Binder;
.source "IFileTransferSetupListener.java"

# interfaces
.implements Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSetupListener"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-eqz p0, :cond_1

    const-string/jumbo v1, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSetupListener"

    .line 29
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-nez v0, :cond_2

    .line 33
    :cond_0
    new-instance v1, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    .line 27
    .end local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    return-object v1

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_2
    instance-of v1, v0, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;

    if-eqz v1, :cond_0

    .line 31
    check-cast v0, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener;

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
    .locals 3
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
    const/4 v2, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_0
    const-string/jumbo v1, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSetupListener"

    .line 45
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v2

    :sswitch_1
    const-string/jumbo v1, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSetupListener"

    .line 50
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v0

    .line 53
    .local v0, "_arg0":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener$Stub;->handleFileTransferSessionSetup(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    return v2

    .end local v0    # "_arg0":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    :sswitch_2
    const-string/jumbo v1, "com.sonymobile.rcs.service.api.client.messaging.IFileTransferSetupListener"

    .line 59
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;

    move-result-object v0

    .line 62
    .restart local v0    # "_arg0":Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSetupListener$Stub;->handleFileTransferSessionResumed(Lcom/sonymobile/rcs/service/api/client/messaging/IFileTransferSession;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    return v2

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
