.class public abstract Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub;
.super Landroid/os/Binder;
.source "ISysmonService.java"

# interfaces
.implements Lcom/sonyericsson/psm/sysmonservice/ISysmonService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.sonyericsson.psm.sysmonservice.ISysmonService"

    invoke-virtual {p0, p0, v0}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "com.sonyericsson.psm.sysmonservice.ISysmonService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
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

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 45
    :sswitch_0
    const-string/jumbo v1, "com.sonyericsson.psm.sysmonservice.ISysmonService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v2

    .line 50
    :sswitch_1
    const-string/jumbo v1, "com.sonyericsson.psm.sysmonservice.ISysmonService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub;->getThermalLevelForCamera()I

    move-result v0

    .line 52
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    return v2

    .line 58
    .end local v0    # "_result":I
    :sswitch_2
    const-string/jumbo v1, "com.sonyericsson.psm.sysmonservice.ISysmonService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub;->getThermalLevelForFs1seg()I

    move-result v0

    .line 60
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return v2

    .line 66
    .end local v0    # "_result":I
    :sswitch_3
    const-string/jumbo v1, "com.sonyericsson.psm.sysmonservice.ISysmonService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub;->getCameraLowTempBurnTimeoutSec()I

    move-result v0

    .line 68
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    return v2

    .line 74
    .end local v0    # "_result":I
    :sswitch_4
    const-string/jumbo v1, "com.sonyericsson.psm.sysmonservice.ISysmonService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub;->getThermalLevelForTelephony()I

    move-result v0

    .line 76
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return v2

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
