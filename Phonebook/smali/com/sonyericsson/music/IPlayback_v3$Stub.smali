.class public abstract Lcom/sonyericsson/music/IPlayback_v3$Stub;
.super Landroid/os/Binder;
.source "IPlayback_v3.java"

# interfaces
.implements Lcom/sonyericsson/music/IPlayback_v3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/IPlayback_v3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sonyericsson.music.IPlayback_v3"

.field static final TRANSACTION_getAlbumArtForPosition:I = 0x14

.field static final TRANSACTION_getAlbumId:I = 0xb

.field static final TRANSACTION_getAlbumName:I = 0xc

.field static final TRANSACTION_getArtistId:I = 0xd

.field static final TRANSACTION_getArtistName:I = 0xe

.field static final TRANSACTION_getDuration:I = 0x7

.field static final TRANSACTION_getPath:I = 0xf

.field static final TRANSACTION_getPluginIcon:I = 0x13

.field static final TRANSACTION_getPosition:I = 0x8

.field static final TRANSACTION_getQueuePosition:I = 0x10

.field static final TRANSACTION_getTrackId:I = 0x9

.field static final TRANSACTION_getTrackName:I = 0xa

.field static final TRANSACTION_isInPlayqueueMode:I = 0x12

.field static final TRANSACTION_isPlaying:I = 0x1

.field static final TRANSACTION_next:I = 0x4

.field static final TRANSACTION_pause:I = 0x3

.field static final TRANSACTION_play:I = 0x2

.field static final TRANSACTION_prev:I = 0x6

.field static final TRANSACTION_setQueuePosition:I = 0x11

.field static final TRANSACTION_shuffleNext:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 19
    invoke-virtual {p0, p0, v0}, Lcom/sonyericsson/music/IPlayback_v3$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/music/IPlayback_v3;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 27
    if-eqz p0, :cond_1

    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 30
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    if-nez v0, :cond_2

    .line 34
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/IPlayback_v3$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 28
    :cond_1
    return-object v0

    .line 31
    :cond_2
    instance-of v1, v0, Lcom/sonyericsson/music/IPlayback_v3;

    if-eqz v1, :cond_0

    .line 32
    check-cast v0, Lcom/sonyericsson/music/IPlayback_v3;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 224
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 46
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v1

    :sswitch_1
    const-string/jumbo v2, "com.sonyericsson.music.IPlayback_v3"

    .line 51
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback_v3$Stub;->isPlaying()Z

    move-result v2

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    return v1

    :cond_0
    move v0, v1

    .line 54
    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 59
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback_v3$Stub;->play()V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    return v1

    :sswitch_3
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 66
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback_v3$Stub;->pause()V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    return v1

    :sswitch_4
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 73
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback_v3$Stub;->next()V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    return v1

    :sswitch_5
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 80
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback_v3$Stub;->shuffleNext()V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    return v1

    :sswitch_6
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback_v3$Stub;->prev()V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    return v1

    :sswitch_7
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback_v3$Stub;->getDuration()J

    move-result-wide v2

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 98
    return v1

    :sswitch_8
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback_v3$Stub;->getPosition()J

    move-result-wide v2

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 106
    return v1

    :sswitch_9
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 110
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback_v3$Stub;->getTrackId()I

    move-result v0

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    return v1

    :sswitch_a
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 118
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback_v3$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return v1

    :sswitch_b
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 126
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback_v3$Stub;->getAlbumId()I

    move-result v0

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    return v1

    :sswitch_c
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 134
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback_v3$Stub;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    return v1

    :sswitch_d
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 142
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback_v3$Stub;->getArtistId()I

    move-result v0

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    return v1

    :sswitch_e
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 150
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback_v3$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    return v1

    :sswitch_f
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 158
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback_v3$Stub;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    return v1

    :sswitch_10
    const-string/jumbo v0, "com.sonyericsson.music.IPlayback_v3"

    .line 166
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback_v3$Stub;->getQueuePosition()I

    move-result v0

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    return v1

    :sswitch_11
    const-string/jumbo v2, "com.sonyericsson.music.IPlayback_v3"

    .line 174
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_1

    .line 179
    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/sonyericsson/music/IPlayback_v3$Stub;->setQueuePosition(IZ)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    return v1

    :cond_1
    move v0, v1

    .line 178
    goto :goto_1

    :sswitch_12
    const-string/jumbo v2, "com.sonyericsson.music.IPlayback_v3"

    .line 185
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback_v3$Stub;->isInPlayqueueMode()Z

    move-result v2

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    if-nez v2, :cond_2

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    return v1

    :cond_2
    move v0, v1

    .line 188
    goto :goto_2

    :sswitch_13
    const-string/jumbo v2, "com.sonyericsson.music.IPlayback_v3"

    .line 193
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/sonyericsson/music/IPlayback_v3$Stub;->getPluginIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-nez v2, :cond_3

    .line 201
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    :goto_3
    return v1

    .line 197
    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    invoke-virtual {v2, p3, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :sswitch_14
    const-string/jumbo v2, "com.sonyericsson.music.IPlayback_v3"

    .line 207
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 212
    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/music/IPlayback_v3$Stub;->getAlbumArtForPosition(II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-nez v2, :cond_4

    .line 219
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    :goto_4
    return v1

    .line 215
    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    invoke-virtual {v2, p3, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 42
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
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
