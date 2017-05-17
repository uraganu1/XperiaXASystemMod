.class public abstract Lcom/gsma/services/rcs/IJoynServiceRegistrationListener$Stub;
.super Landroid/os/Binder;
.source "IJoynServiceRegistrationListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/IJoynServiceRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/IJoynServiceRegistrationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/IJoynServiceRegistrationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.IJoynServiceRegistrationListener"

.field static final TRANSACTION_onServiceRegistered:I = 0x1

.field static final TRANSACTION_onServiceUnregistered:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.gsma.services.rcs.IJoynServiceRegistrationListener"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/IJoynServiceRegistrationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IJoynServiceRegistrationListener;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 26
    if-eqz p0, :cond_1

    const-string/jumbo v0, "com.gsma.services.rcs.IJoynServiceRegistrationListener"

    .line 29
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    if-nez v0, :cond_2

    .line 33
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/IJoynServiceRegistrationListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/IJoynServiceRegistrationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 27
    :cond_1
    return-object v0

    .line 30
    :cond_2
    instance-of v1, v0, Lcom/gsma/services/rcs/IJoynServiceRegistrationListener;

    if-eqz v1, :cond_0

    .line 31
    check-cast v0, Lcom/gsma/services/rcs/IJoynServiceRegistrationListener;

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.gsma.services.rcs.IJoynServiceRegistrationListener"

    .line 45
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v1

    :sswitch_1
    const-string/jumbo v0, "com.gsma.services.rcs.IJoynServiceRegistrationListener"

    .line 50
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/gsma/services/rcs/IJoynServiceRegistrationListener$Stub;->onServiceRegistered()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    return v1

    :sswitch_2
    const-string/jumbo v0, "com.gsma.services.rcs.IJoynServiceRegistrationListener"

    .line 57
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/gsma/services/rcs/IJoynServiceRegistrationListener$Stub;->onServiceUnregistered()V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    return v1

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
