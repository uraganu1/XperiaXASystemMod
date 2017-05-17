.class Lcom/sonymobile/holla/ICallPlusService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICallPlusService.java"

# interfaces
.implements Lcom/sonymobile/holla/ICallPlusService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/holla/ICallPlusService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/sonymobile/holla/ICallPlusService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 83
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonymobile/holla/ICallPlusService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCachedCapability(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 94
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 95
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    :try_start_0
    const-string/jumbo v4, "com.sonymobile.holla.ICallPlusService"

    .line 98
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v4, p0, Lcom/sonymobile/holla/ICallPlusService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 101
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 102
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 105
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 106
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 108
    return v0

    :cond_0
    move v0, v1

    .line 102
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    .line 105
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 106
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "com.sonymobile.holla.ICallPlusService"

    .line 90
    return-object v0
.end method

.method public requestCapability(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.sonymobile.holla.ICallPlusService"

    .line 115
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/sonymobile/holla/ICallPlusService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 118
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 122
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    .line 121
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 122
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
