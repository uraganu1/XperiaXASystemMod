.class public abstract Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession$Stub;
.super Landroid/os/Binder;
.source "IGeolocSharingSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession;
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

    const-string/jumbo v0, "com.sonymobile.rcs.service.api.client.richcall.IGeolocSharingSession"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

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
    .locals 5
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
    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_0
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.richcall.IGeolocSharingSession"

    .line 45
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v4

    :sswitch_1
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.richcall.IGeolocSharingSession"

    .line 50
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession$Stub;->getSessionID()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return v4

    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.richcall.IGeolocSharingSession"

    .line 58
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession$Stub;->getRemoteContact()Ljava/lang/String;

    move-result-object v2

    .line 60
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return v4

    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.richcall.IGeolocSharingSession"

    .line 66
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession$Stub;->getSessionState()I

    move-result v1

    .line 68
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    return v4

    .end local v1    # "_result":I
    :sswitch_4
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.richcall.IGeolocSharingSession"

    .line 74
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession$Stub;->acceptSession()V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    return v4

    :sswitch_5
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.richcall.IGeolocSharingSession"

    .line 81
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession$Stub;->rejectSession()V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    return v4

    :sswitch_6
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.richcall.IGeolocSharingSession"

    .line 88
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession$Stub;->cancelSession()V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    return v4

    :sswitch_7
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.richcall.IGeolocSharingSession"

    .line 95
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingEventListener;

    move-result-object v0

    .line 98
    .local v0, "_arg0":Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingEventListener;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession$Stub;->addSessionListener(Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingEventListener;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    return v4

    .end local v0    # "_arg0":Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingEventListener;
    :sswitch_8
    const-string/jumbo v3, "com.sonymobile.rcs.service.api.client.richcall.IGeolocSharingSession"

    .line 104
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingEventListener;

    move-result-object v0

    .line 107
    .restart local v0    # "_arg0":Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingEventListener;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingSession$Stub;->removeSessionListener(Lcom/sonymobile/rcs/service/api/client/richcall/IGeolocSharingEventListener;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    return v4

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
