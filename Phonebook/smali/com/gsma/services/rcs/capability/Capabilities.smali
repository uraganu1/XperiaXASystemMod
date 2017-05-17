.class public Lcom/gsma/services/rcs/capability/Capabilities;
.super Ljava/lang/Object;
.source "Capabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/rcs/capability/Capabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private automata:Z

.field private extensions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fileTransfer:Z

.field private geolocPush:Z

.field private imSession:Z

.field private imageSharing:Z

.field private ipVideoCall:Z

.field private ipVoiceCall:Z

.field private videoSharing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/gsma/services/rcs/capability/Capabilities$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/capability/Capabilities$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/capability/Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->imageSharing:Z

    .line 44
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->videoSharing:Z

    .line 49
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->imSession:Z

    .line 54
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->fileTransfer:Z

    .line 59
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->geolocPush:Z

    .line 64
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->ipVoiceCall:Z

    .line 69
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->ipVideoCall:Z

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->extensions:Ljava/util/Set;

    .line 79
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->automata:Z

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->imageSharing:Z

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->videoSharing:Z

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->imSession:Z

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->fileTransfer:Z

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 123
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/gsma/services/rcs/capability/Capabilities;->extensions:Ljava/util/Set;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->geolocPush:Z

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->ipVoiceCall:Z

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->ipVideoCall:Z

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_7

    :goto_7
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->automata:Z

    .line 128
    return-void

    :cond_0
    move v0, v2

    .line 117
    goto :goto_0

    :cond_1
    move v0, v2

    .line 118
    goto :goto_1

    :cond_2
    move v0, v2

    .line 119
    goto :goto_2

    :cond_3
    move v0, v2

    .line 120
    goto :goto_3

    :cond_4
    move v0, v2

    .line 124
    goto :goto_4

    :cond_5
    move v0, v2

    .line 125
    goto :goto_5

    :cond_6
    move v0, v2

    .line 126
    goto :goto_6

    :cond_7
    move v1, v2

    .line 127
    goto :goto_7
.end method

.method public constructor <init>(ZZZZZZZLjava/util/Set;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZZZ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->imageSharing:Z

    .line 44
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->videoSharing:Z

    .line 49
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->imSession:Z

    .line 54
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->fileTransfer:Z

    .line 59
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->geolocPush:Z

    .line 64
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->ipVoiceCall:Z

    .line 69
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->ipVideoCall:Z

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->extensions:Ljava/util/Set;

    .line 79
    iput-boolean v1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->automata:Z

    .line 99
    iput-boolean p1, p0, Lcom/gsma/services/rcs/capability/Capabilities;->imageSharing:Z

    .line 100
    iput-boolean p2, p0, Lcom/gsma/services/rcs/capability/Capabilities;->videoSharing:Z

    .line 101
    iput-boolean p3, p0, Lcom/gsma/services/rcs/capability/Capabilities;->imSession:Z

    .line 102
    iput-boolean p4, p0, Lcom/gsma/services/rcs/capability/Capabilities;->fileTransfer:Z

    .line 103
    iput-boolean p5, p0, Lcom/gsma/services/rcs/capability/Capabilities;->geolocPush:Z

    .line 104
    iput-boolean p6, p0, Lcom/gsma/services/rcs/capability/Capabilities;->ipVoiceCall:Z

    .line 105
    iput-boolean p7, p0, Lcom/gsma/services/rcs/capability/Capabilities;->ipVideoCall:Z

    .line 106
    iput-object p8, p0, Lcom/gsma/services/rcs/capability/Capabilities;->extensions:Ljava/util/Set;

    .line 107
    iput-boolean p9, p0, Lcom/gsma/services/rcs/capability/Capabilities;->automata:Z

    .line 108
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 138
    return v0
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->extensions:Ljava/util/Set;

    return-object v0
.end method

.method public isAutomata()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->automata:Z

    return v0
.end method

.method public isExtensionSupported(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->extensions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFileTransferSupported()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->fileTransfer:Z

    return v0
.end method

.method public isGeolocPushSupported()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->geolocPush:Z

    return v0
.end method

.method public isIPVideoCallSupported()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->ipVideoCall:Z

    return v0
.end method

.method public isIPVoiceCallSupported()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->ipVoiceCall:Z

    return v0
.end method

.method public isImSessionSupported()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->imSession:Z

    return v0
.end method

.method public isImageSharingSupported()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->imageSharing:Z

    return v0
.end method

.method public isVideoSharingSupported()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->videoSharing:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->imageSharing:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->videoSharing:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->imSession:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->fileTransfer:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->extensions:Ljava/util/Set;

    if-nez v0, :cond_4

    .line 158
    :goto_4
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->geolocPush:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->ipVoiceCall:Z

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->ipVideoCall:Z

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-boolean v0, p0, Lcom/gsma/services/rcs/capability/Capabilities;->automata:Z

    if-nez v0, :cond_8

    :goto_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    return-void

    :cond_0
    move v0, v2

    .line 149
    goto :goto_0

    :cond_1
    move v0, v2

    .line 150
    goto :goto_1

    :cond_2
    move v0, v2

    .line 151
    goto :goto_2

    :cond_3
    move v0, v2

    .line 152
    goto :goto_3

    .line 154
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    iget-object v3, p0, Lcom/gsma/services/rcs/capability/Capabilities;->extensions:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_4

    :cond_5
    move v0, v2

    .line 158
    goto :goto_5

    :cond_6
    move v0, v2

    .line 159
    goto :goto_6

    :cond_7
    move v0, v2

    .line 160
    goto :goto_7

    :cond_8
    move v1, v2

    .line 161
    goto :goto_8
.end method
