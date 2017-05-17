.class public abstract Lcom/sonymobile/holla/ICallPlusService$Stub;
.super Landroid/os/Binder;
.source "ICallPlusService.java"

# interfaces
.implements Lcom/sonymobile/holla/ICallPlusService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/holla/ICallPlusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/holla/ICallPlusService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sonymobile.holla.ICallPlusService"

.field static final TRANSACTION_getCachedCapability:I = 0x1

.field static final TRANSACTION_requestCapability:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sonymobile.holla.ICallPlusService"

    .line 25
    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/holla/ICallPlusService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/holla/ICallPlusService;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 33
    if-eqz p0, :cond_1

    const-string/jumbo v0, "com.sonymobile.holla.ICallPlusService"

    .line 36
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 40
    :cond_0
    new-instance v0, Lcom/sonymobile/holla/ICallPlusService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sonymobile/holla/ICallPlusService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 34
    :cond_1
    return-object v0

    .line 37
    :cond_2
    instance-of v1, v0, Lcom/sonymobile/holla/ICallPlusService;

    if-eqz v1, :cond_0

    .line 38
    check-cast v0, Lcom/sonymobile/holla/ICallPlusService;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 48
    sparse-switch p1, :sswitch_data_0

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.sonymobile.holla.ICallPlusService"

    .line 52
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    return v1

    :sswitch_1
    const-string/jumbo v2, "com.sonymobile.holla.ICallPlusService"

    .line 57
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {p0, v2}, Lcom/sonymobile/holla/ICallPlusService$Stub;->getCachedCapability(Ljava/lang/String;)Z

    move-result v2

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return v1

    :cond_0
    move v0, v1

    .line 62
    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "com.sonymobile.holla.ICallPlusService"

    .line 67
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {p0, v0}, Lcom/sonymobile/holla/ICallPlusService$Stub;->requestCapability(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    return v1

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
