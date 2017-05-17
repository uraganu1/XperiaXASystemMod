.class public abstract Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession$Stub;
.super Landroid/os/Binder;
.source "IImageSharingSession.java"

# interfaces
.implements Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession;
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

    const-string/jumbo v0, "com.sonymobile.rcs.service.api.client.richcall.IImageSharingSession"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

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
    .locals 9
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
    const/4 v8, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    :sswitch_0
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.richcall.IImageSharingSession"

    .line 45
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v8

    :sswitch_1
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.richcall.IImageSharingSession"

    .line 50
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession$Stub;->getSessionID()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return v8

    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.richcall.IImageSharingSession"

    .line 58
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession$Stub;->getRemoteContact()Ljava/lang/String;

    move-result-object v5

    .line 60
    .restart local v5    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return v8

    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.richcall.IImageSharingSession"

    .line 66
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession$Stub;->getSessionState()I

    move-result v1

    .line 68
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    return v8

    .end local v1    # "_result":I
    :sswitch_4
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.richcall.IImageSharingSession"

    .line 74
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession$Stub;->getFileUri()Landroid/net/Uri;

    move-result-object v4

    .line 76
    .local v4, "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-nez v4, :cond_0

    const/4 v7, 0x0

    .line 82
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    :goto_0
    return v8

    .line 78
    :cond_0
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    invoke-virtual {v4, p3, v8}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .end local v4    # "_result":Landroid/net/Uri;
    :sswitch_5
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.richcall.IImageSharingSession"

    .line 88
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession$Stub;->getFilesize()J

    move-result-wide v2

    .line 90
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 92
    return v8

    .end local v2    # "_result":J
    :sswitch_6
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.richcall.IImageSharingSession"

    .line 96
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession$Stub;->getFileThumbnail()[B

    move-result-object v6

    .line 98
    .local v6, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 100
    return v8

    .end local v6    # "_result":[B
    :sswitch_7
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.richcall.IImageSharingSession"

    .line 104
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession$Stub;->acceptSession()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    return v8

    :sswitch_8
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.richcall.IImageSharingSession"

    .line 111
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession$Stub;->rejectSession()V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    return v8

    :sswitch_9
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.richcall.IImageSharingSession"

    .line 118
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession$Stub;->cancelSession()V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    return v8

    :sswitch_a
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.richcall.IImageSharingSession"

    .line 125
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener;

    move-result-object v0

    .line 128
    .local v0, "_arg0":Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession$Stub;->addSessionListener(Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    return v8

    .end local v0    # "_arg0":Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener;
    :sswitch_b
    const-string/jumbo v7, "com.sonymobile.rcs.service.api.client.richcall.IImageSharingSession"

    .line 134
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener;

    move-result-object v0

    .line 137
    .restart local v0    # "_arg0":Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener;
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingSession$Stub;->removeSessionListener(Lcom/sonymobile/rcs/service/api/client/richcall/IImageSharingEventListener;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    return v8

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
