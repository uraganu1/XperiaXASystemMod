.class public abstract Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;
.super Landroid/os/Binder;
.source "ICapabilityService.java"

# interfaces
.implements Lcom/gsma/services/rcs/capability/ICapabilityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/capability/ICapabilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/capability/ICapabilityService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.capability.ICapabilityService"

.field static final TRANSACTION_addCapabilitiesListener:I = 0x8

.field static final TRANSACTION_addContactCapabilitiesListener:I = 0xa

.field static final TRANSACTION_addServiceRegistrationListener:I = 0x2

.field static final TRANSACTION_getContactCapabilities:I = 0x5

.field static final TRANSACTION_getMyCapabilities:I = 0x4

.field static final TRANSACTION_getServiceVersion:I = 0xc

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_removeCapabilitiesListener:I = 0x9

.field static final TRANSACTION_removeContactCapabilitiesListener:I = 0xb

.field static final TRANSACTION_removeServiceRegistrationListener:I = 0x3

.field static final TRANSACTION_requestAllContactsCapabilities:I = 0x7

.field static final TRANSACTION_requestContactCapabilities:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/capability/ICapabilityService;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 26
    if-eqz p0, :cond_1

    const-string/jumbo v0, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 29
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    if-nez v0, :cond_2

    .line 33
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 27
    :cond_1
    return-object v0

    .line 30
    :cond_2
    instance-of v1, v0, Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v1, :cond_0

    .line 31
    check-cast v0, Lcom/gsma/services/rcs/capability/ICapabilityService;

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
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 45
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v1

    :sswitch_1
    const-string/jumbo v2, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 50
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->isServiceRegistered()Z

    move-result v2

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    return v1

    :cond_0
    move v0, v1

    .line 53
    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 58
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/gsma/services/rcs/IJoynServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IJoynServiceRegistrationListener;

    move-result-object v0

    .line 61
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->addServiceRegistrationListener(Lcom/gsma/services/rcs/IJoynServiceRegistrationListener;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    return v1

    :sswitch_3
    const-string/jumbo v0, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 67
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/gsma/services/rcs/IJoynServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IJoynServiceRegistrationListener;

    move-result-object v0

    .line 70
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->removeServiceRegistrationListener(Lcom/gsma/services/rcs/IJoynServiceRegistrationListener;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    return v1

    :sswitch_4
    const-string/jumbo v2, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 76
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->getMyCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v2

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-nez v2, :cond_1

    .line 84
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    :goto_1
    return v1

    .line 80
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {v2, p3, v1}, Lcom/gsma/services/rcs/capability/Capabilities;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :sswitch_5
    const-string/jumbo v2, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 90
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->getContactCapabilities(Ljava/lang/String;)Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v2

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-nez v2, :cond_2

    .line 100
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    :goto_2
    return v1

    .line 96
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    invoke-virtual {v2, p3, v1}, Lcom/gsma/services/rcs/capability/Capabilities;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :sswitch_6
    const-string/jumbo v0, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 106
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->requestContactCapabilities(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    return v1

    :sswitch_7
    const-string/jumbo v0, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 115
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->requestAllContactsCapabilities()V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    return v1

    :sswitch_8
    const-string/jumbo v0, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 122
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/capability/ICapabilitiesListener;

    move-result-object v0

    .line 125
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->addCapabilitiesListener(Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    return v1

    :sswitch_9
    const-string/jumbo v0, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 131
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/capability/ICapabilitiesListener;

    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->removeCapabilitiesListener(Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    return v1

    :sswitch_a
    const-string/jumbo v0, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 140
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/capability/ICapabilitiesListener;

    move-result-object v2

    .line 145
    invoke-virtual {p0, v0, v2}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->addContactCapabilitiesListener(Ljava/lang/String;Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    return v1

    :sswitch_b
    const-string/jumbo v0, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 151
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/capability/ICapabilitiesListener;

    move-result-object v2

    .line 156
    invoke-virtual {p0, v0, v2}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->removeContactCapabilitiesListener(Ljava/lang/String;Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    return v1

    :sswitch_c
    const-string/jumbo v0, "com.gsma.services.rcs.capability.ICapabilityService"

    .line 162
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;->getServiceVersion()I

    move-result v0

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    return v1

    .line 41
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
