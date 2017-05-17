.class public abstract Lcom/sonymobile/rcs/service/api/client/presence/IPresenceApi$Stub;
.super Landroid/os/Binder;
.source "IPresenceApi.java"

# interfaces
.implements Lcom/sonymobile/rcs/service/api/client/presence/IPresenceApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/service/api/client/presence/IPresenceApi;
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

    const-string/jumbo v0, "com.sonymobile.rcs.service.api.client.presence.IPresenceApi"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/rcs/service/api/client/presence/IPresenceApi$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

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
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_0
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.presence.IPresenceApi"

    .line 45
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v5

    :sswitch_1
    const-string/jumbo v6, "com.sonymobile.rcs.service.api.client.presence.IPresenceApi"

    .line 50
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_0

    const/4 v0, 0x0

    .line 58
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonymobile/rcs/service/api/client/presence/IPresenceApi$Stub;->setMyPresenceInfo(Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;)Z

    move-result v3

    .line 59
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    return v5

    .line 53
    .end local v3    # "_result":Z
    :cond_0
    sget-object v6, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;

    .local v0, "_arg0":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    goto :goto_0

    .end local v0    # "_arg0":Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
    .restart local v3    # "_result":Z
    :cond_1
    move v4, v5

    .line 60
    goto :goto_1

    .end local v3    # "_result":Z
    :sswitch_2
    const-string/jumbo v6, "com.sonymobile.rcs.service.api.client.presence.IPresenceApi"

    .line 65
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/api/client/presence/IPresenceApi$Stub;->inviteContact(Ljava/lang/String;)Z

    move-result v3

    .line 69
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    return v5

    :cond_2
    move v4, v5

    .line 70
    goto :goto_2

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_3
    const-string/jumbo v6, "com.sonymobile.rcs.service.api.client.presence.IPresenceApi"

    .line 75
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/api/client/presence/IPresenceApi$Stub;->acceptSharingInvitation(Ljava/lang/String;)Z

    move-result v3

    .line 79
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-nez v3, :cond_3

    :goto_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return v5

    :cond_3
    move v4, v5

    .line 80
    goto :goto_3

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_4
    const-string/jumbo v6, "com.sonymobile.rcs.service.api.client.presence.IPresenceApi"

    .line 85
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/api/client/presence/IPresenceApi$Stub;->rejectSharingInvitation(Ljava/lang/String;)Z

    move-result v3

    .line 89
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-nez v3, :cond_4

    :goto_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return v5

    :cond_4
    move v4, v5

    .line 90
    goto :goto_4

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_5
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.presence.IPresenceApi"

    .line 95
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/api/client/presence/IPresenceApi$Stub;->ignoreSharingInvitation(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    return v5

    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v6, "com.sonymobile.rcs.service.api.client.presence.IPresenceApi"

    .line 104
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/api/client/presence/IPresenceApi$Stub;->revokeContact(Ljava/lang/String;)Z

    move-result v3

    .line 108
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-nez v3, :cond_5

    :goto_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    return v5

    :cond_5
    move v4, v5

    .line 109
    goto :goto_5

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_7
    const-string/jumbo v6, "com.sonymobile.rcs.service.api.client.presence.IPresenceApi"

    .line 114
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/api/client/presence/IPresenceApi$Stub;->unrevokeContact(Ljava/lang/String;)Z

    move-result v3

    .line 118
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-nez v3, :cond_6

    :goto_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return v5

    :cond_6
    move v4, v5

    .line 119
    goto :goto_6

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_8
    const-string/jumbo v6, "com.sonymobile.rcs.service.api.client.presence.IPresenceApi"

    .line 124
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 127
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/service/api/client/presence/IPresenceApi$Stub;->unblockContact(Ljava/lang/String;)Z

    move-result v3

    .line 128
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-nez v3, :cond_7

    :goto_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    return v5

    :cond_7
    move v4, v5

    .line 129
    goto :goto_7

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_9
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.presence.IPresenceApi"

    .line 134
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/presence/IPresenceApi$Stub;->getGrantedContacts()Ljava/util/List;

    move-result-object v2

    .line 136
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 138
    return v5

    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_a
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.presence.IPresenceApi"

    .line 142
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/presence/IPresenceApi$Stub;->getRevokedContacts()Ljava/util/List;

    move-result-object v2

    .line 144
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 146
    return v5

    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_b
    const-string/jumbo v4, "com.sonymobile.rcs.service.api.client.presence.IPresenceApi"

    .line 150
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/presence/IPresenceApi$Stub;->getBlockedContacts()Ljava/util/List;

    move-result-object v2

    .line 152
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 154
    return v5

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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
