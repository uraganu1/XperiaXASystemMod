.class public abstract Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub;
.super Landroid/os/Binder;
.source "ICapabilitiesListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/capability/ICapabilitiesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.capability.ICapabilitiesListener"

.field static final TRANSACTION_onCapabilitiesReceived:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.gsma.services.rcs.capability.ICapabilitiesListener"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/capability/ICapabilitiesListener;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 26
    if-eqz p0, :cond_1

    const-string/jumbo v0, "com.gsma.services.rcs.capability.ICapabilitiesListener"

    .line 29
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    if-nez v0, :cond_2

    .line 33
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 27
    :cond_1
    return-object v0

    .line 30
    :cond_2
    instance-of v1, v0, Lcom/gsma/services/rcs/capability/ICapabilitiesListener;

    if-eqz v1, :cond_0

    .line 31
    check-cast v0, Lcom/gsma/services/rcs/capability/ICapabilitiesListener;

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.gsma.services.rcs.capability.ICapabilitiesListener"

    .line 45
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v2

    :sswitch_1
    const-string/jumbo v0, "com.gsma.services.rcs.capability.ICapabilitiesListener"

    .line 50
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 60
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub;->onCapabilitiesReceived(Ljava/lang/String;Lcom/gsma/services/rcs/capability/Capabilities;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    return v2

    .line 55
    :cond_0
    sget-object v0, Lcom/gsma/services/rcs/capability/Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/capability/Capabilities;

    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
