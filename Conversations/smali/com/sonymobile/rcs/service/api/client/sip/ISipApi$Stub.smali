.class public abstract Lcom/sonymobile/rcs/service/api/client/sip/ISipApi$Stub;
.super Landroid/os/Binder;
.source "ISipApi.java"

# interfaces
.implements Lcom/sonymobile/rcs/service/api/client/sip/ISipApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/sip/ISipApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sonymobile.rcs.service.api.client.sip.ISipApi"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/rcs/service/api/client/sip/ISipApi$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    :sswitch_0
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.sip.ISipApi"

    .line 45
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v9

    :sswitch_1
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.sip.ISipApi"

    .line 50
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/rcs/service/api/client/sip/ISipApi$Stub;->initiateSession(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/sip/ISipSession;

    move-result-object v4

    .line 56
    .local v4, "_result":Lcom/sonymobile/rcs/service/api/client/sip/ISipSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-nez v4, :cond_0

    :goto_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 58
    return v9

    .line 57
    :cond_0
    invoke-interface {v4}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSession;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    goto :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Lcom/sonymobile/rcs/service/api/client/sip/ISipSession;
    :sswitch_2
    const-string/jumbo v8, "com.sonymobile.rcs.service.api.client.sip.ISipApi"

    .line 62
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/sip/ISipApi$Stub;->getSession(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/sip/ISipSession;

    move-result-object v4

    .line 66
    .restart local v4    # "_result":Lcom/sonymobile/rcs/service/api/client/sip/ISipSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-nez v4, :cond_1

    :goto_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 68
    return v9

    .line 67
    :cond_1
    invoke-interface {v4}, Lcom/sonymobile/rcs/service/api/client/sip/ISipSession;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    goto :goto_1

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Lcom/sonymobile/rcs/service/api/client/sip/ISipSession;
    :sswitch_3
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.sip.ISipApi"

    .line 72
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/sip/ISipApi$Stub;->getSessionsWith(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 76
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 78
    return v9

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_4
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.sip.ISipApi"

    .line 82
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/sip/ISipApi$Stub;->getSessions()Ljava/util/List;

    move-result-object v5

    .line 84
    .restart local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 86
    return v9

    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_5
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.sip.ISipApi"

    .line 90
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonymobile/rcs/service/api/client/sip/ISipApi$Stub;->sendSipInstantMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 100
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-nez v6, :cond_2

    move v7, v8

    :goto_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return v9

    :cond_2
    move v7, v9

    .line 101
    goto :goto_2

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_6
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.sip.ISipApi"

    .line 106
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/sip/ISipApi$Stub;->isBehindNat()Z

    move-result v6

    .line 108
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-nez v6, :cond_3

    :goto_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    return v9

    :cond_3
    move v8, v9

    .line 109
    goto :goto_3

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
