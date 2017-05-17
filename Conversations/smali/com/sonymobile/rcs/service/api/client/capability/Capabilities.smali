.class public Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;
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
            "Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callComposer:Z

.field private csVideo:Z

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

.field private fileTransferHttp:Z

.field private fileTransferStoreForward:Z

.field private fileTransferThumbnail:Z

.field private geolocationPush:Z

.field private groupChatStoreForward:Z

.field private imSession:Z

.field private imageSharing:Z

.field private ipVideoCall:Z

.field private ipVoiceCall:Z

.field private postCall:Z

.field private presenceDiscovery:Z

.field private sharedMap:Z

.field private sharedSketch:Z

.field private sipAutomata:Z

.field private socialPresence:Z

.field private timestamp:J

.field private videoSharing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 226
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities$1;

    invoke-direct {v0}, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities$1;-><init>()V

    sput-object v0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->imageSharing:Z

    .line 47
    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->videoSharing:Z

    .line 52
    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->ipVoiceCall:Z

    .line 57
    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->ipVideoCall:Z

    .line 62
    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->imSession:Z

    .line 67
    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransfer:Z

    .line 72
    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->csVideo:Z

    .line 77
    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->presenceDiscovery:Z

    .line 82
    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->socialPresence:Z

    .line 87
    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransferHttp:Z

    .line 92
    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->geolocationPush:Z

    .line 97
    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransferThumbnail:Z

    .line 102
    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransferStoreForward:Z

    .line 107
    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->groupChatStoreForward:Z

    .line 113
    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->callComposer:Z

    .line 118
    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->sharedMap:Z

    .line 123
    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->sharedSketch:Z

    .line 128
    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->postCall:Z

    .line 133
    iput-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->sipAutomata:Z

    .line 138
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->extensions:Ljava/util/Set;

    const-wide/16 v0, 0x0

    .line 143
    iput-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->timestamp:J

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v2, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->imageSharing:Z

    .line 47
    iput-boolean v2, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->videoSharing:Z

    .line 52
    iput-boolean v2, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->ipVoiceCall:Z

    .line 57
    iput-boolean v2, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->ipVideoCall:Z

    .line 62
    iput-boolean v2, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->imSession:Z

    .line 67
    iput-boolean v2, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransfer:Z

    .line 72
    iput-boolean v2, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->csVideo:Z

    .line 77
    iput-boolean v2, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->presenceDiscovery:Z

    .line 82
    iput-boolean v2, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->socialPresence:Z

    .line 87
    iput-boolean v2, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransferHttp:Z

    .line 92
    iput-boolean v2, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->geolocationPush:Z

    .line 97
    iput-boolean v2, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransferThumbnail:Z

    .line 102
    iput-boolean v2, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransferStoreForward:Z

    .line 107
    iput-boolean v2, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->groupChatStoreForward:Z

    .line 113
    iput-boolean v2, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->callComposer:Z

    .line 118
    iput-boolean v2, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->sharedMap:Z

    .line 123
    iput-boolean v2, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->sharedSketch:Z

    .line 128
    iput-boolean v2, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->postCall:Z

    .line 133
    iput-boolean v2, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->sipAutomata:Z

    .line 138
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->extensions:Ljava/util/Set;

    const-wide/16 v4, 0x0

    .line 143
    iput-wide v4, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->timestamp:J

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->imageSharing:Z

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->videoSharing:Z

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->ipVoiceCall:Z

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->ipVideoCall:Z

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->imSession:Z

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransfer:Z

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_6
    iput-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->csVideo:Z

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_7
    iput-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->presenceDiscovery:Z

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_8
    iput-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->socialPresence:Z

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_9
    iput-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransferHttp:Z

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_a
    iput-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->geolocationPush:Z

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_b
    iput-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransferThumbnail:Z

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_c
    iput-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransferStoreForward:Z

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_d
    iput-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->groupChatStoreForward:Z

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_e
    iput-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->callComposer:Z

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_f
    iput-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->sharedMap:Z

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_10
    iput-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->sharedSketch:Z

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_11

    move v1, v2

    :goto_11
    iput-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->postCall:Z

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_12

    :goto_12
    iput-boolean v2, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->sipAutomata:Z

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->timestamp:J

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 179
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->extensions:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 180
    return-void

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    move v1, v3

    .line 157
    goto/16 :goto_0

    :cond_1
    move v1, v3

    .line 158
    goto/16 :goto_1

    :cond_2
    move v1, v3

    .line 159
    goto/16 :goto_2

    :cond_3
    move v1, v3

    .line 160
    goto/16 :goto_3

    :cond_4
    move v1, v3

    .line 161
    goto/16 :goto_4

    :cond_5
    move v1, v3

    .line 162
    goto/16 :goto_5

    :cond_6
    move v1, v3

    .line 163
    goto/16 :goto_6

    :cond_7
    move v1, v3

    .line 164
    goto/16 :goto_7

    :cond_8
    move v1, v3

    .line 165
    goto/16 :goto_8

    :cond_9
    move v1, v3

    .line 166
    goto/16 :goto_9

    :cond_a
    move v1, v3

    .line 167
    goto :goto_a

    :cond_b
    move v1, v3

    .line 168
    goto :goto_b

    :cond_c
    move v1, v3

    .line 169
    goto :goto_c

    :cond_d
    move v1, v3

    .line 170
    goto :goto_d

    :cond_e
    move v1, v3

    .line 171
    goto :goto_e

    :cond_f
    move v1, v3

    .line 172
    goto :goto_f

    :cond_10
    move v1, v3

    .line 173
    goto :goto_10

    :cond_11
    move v1, v3

    .line 174
    goto :goto_11

    :cond_12
    move v2, v3

    .line 175
    goto :goto_12
.end method


# virtual methods
.method public addSupportedExtension(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 583
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->extensions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 584
    return-void
.end method

.method public clearSupportedExtensions()V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->extensions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 601
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 189
    return v0
.end method

.method public getSupportedExtensions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 592
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->extensions:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 609
    iget-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->timestamp:J

    return-wide v0
.end method

.method public isCallComposerSupported()Z
    .locals 1

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->callComposer:Z

    return v0
.end method

.method public isCsVideoSupported()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->csVideo:Z

    return v0
.end method

.method public isFileTransferHttpSupported()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransferHttp:Z

    return v0
.end method

.method public isFileTransferStoreForwardSupported()Z
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransferStoreForward:Z

    return v0
.end method

.method public isFileTransferSupported()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransfer:Z

    return v0
.end method

.method public isFileTransferThumbnailSupported()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransferThumbnail:Z

    return v0
.end method

.method public isGeolocationPushSupported()Z
    .locals 1

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->geolocationPush:Z

    return v0
.end method

.method public isGroupChatStoreForwardSupported()Z
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->groupChatStoreForward:Z

    return v0
.end method

.method public isIPVideoCallSupported()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->ipVideoCall:Z

    return v0
.end method

.method public isIPVoiceCallSupported()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->ipVoiceCall:Z

    return v0
.end method

.method public isImSessionSupported()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->imSession:Z

    return v0
.end method

.method public isImageSharingSupported()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->imageSharing:Z

    return v0
.end method

.method public isPostCallSupported()Z
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->postCall:Z

    return v0
.end method

.method public isPresenceDiscoverySupported()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->presenceDiscovery:Z

    return v0
.end method

.method public isSharedMapSupported()Z
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->sharedMap:Z

    return v0
.end method

.method public isSharedSketchSupported()Z
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->sharedSketch:Z

    return v0
.end method

.method public isSipAutomata()Z
    .locals 1

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->sipAutomata:Z

    return v0
.end method

.method public isSocialPresenceSupported()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->socialPresence:Z

    return v0
.end method

.method public isVideoSharingSupported()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->videoSharing:Z

    return v0
.end method

.method public setCallComposerSupport(Z)V
    .locals 0
    .param p1, "callComposer"    # Z

    .prologue
    .line 502
    iput-boolean p1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->callComposer:Z

    .line 503
    return-void
.end method

.method public setCsVideoSupport(Z)V
    .locals 0
    .param p1, "supported"    # Z

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->csVideo:Z

    .line 360
    return-void
.end method

.method public setFileTransferHttpSupport(Z)V
    .locals 0
    .param p1, "supported"    # Z

    .prologue
    .line 413
    iput-boolean p1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransferHttp:Z

    .line 414
    return-void
.end method

.method public setFileTransferStoreForwardSupport(Z)V
    .locals 0
    .param p1, "supported"    # Z

    .prologue
    .line 466
    iput-boolean p1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransferStoreForward:Z

    .line 467
    return-void
.end method

.method public setFileTransferSupport(Z)V
    .locals 0
    .param p1, "supported"    # Z

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransfer:Z

    .line 342
    return-void
.end method

.method public setFileTransferThumbnailSupport(Z)V
    .locals 0
    .param p1, "supported"    # Z

    .prologue
    .line 448
    iput-boolean p1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransferThumbnail:Z

    .line 449
    return-void
.end method

.method public setGeolocationPushSupport(Z)V
    .locals 0
    .param p1, "supported"    # Z

    .prologue
    .line 431
    iput-boolean p1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->geolocationPush:Z

    .line 432
    return-void
.end method

.method public setGroupChatStoreForwardSupport(Z)V
    .locals 0
    .param p1, "supported"    # Z

    .prologue
    .line 484
    iput-boolean p1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->groupChatStoreForward:Z

    .line 485
    return-void
.end method

.method public setIPVideoCallSupport(Z)V
    .locals 0
    .param p1, "supported"    # Z

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->ipVideoCall:Z

    .line 315
    return-void
.end method

.method public setIPVoiceCallSupport(Z)V
    .locals 0
    .param p1, "supported"    # Z

    .prologue
    .line 305
    iput-boolean p1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->ipVoiceCall:Z

    .line 306
    return-void
.end method

.method public setImSessionSupport(Z)V
    .locals 0
    .param p1, "supported"    # Z

    .prologue
    .line 323
    iput-boolean p1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->imSession:Z

    .line 324
    return-void
.end method

.method public setImageSharingSupport(Z)V
    .locals 0
    .param p1, "supported"    # Z

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->imageSharing:Z

    .line 252
    return-void
.end method

.method public setPostCallSupport(Z)V
    .locals 0
    .param p1, "postCall"    # Z

    .prologue
    .line 556
    iput-boolean p1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->postCall:Z

    .line 557
    return-void
.end method

.method public setPresenceDiscoverySupport(Z)V
    .locals 0
    .param p1, "supported"    # Z

    .prologue
    .line 377
    iput-boolean p1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->presenceDiscovery:Z

    .line 378
    return-void
.end method

.method public setSharedMapSupport(Z)V
    .locals 0
    .param p1, "sharedMap"    # Z

    .prologue
    .line 520
    iput-boolean p1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->sharedMap:Z

    .line 521
    return-void
.end method

.method public setSharedSketchSupport(Z)V
    .locals 0
    .param p1, "sharedSketch"    # Z

    .prologue
    .line 538
    iput-boolean p1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->sharedSketch:Z

    .line 539
    return-void
.end method

.method public setSipAutomata(Z)V
    .locals 0
    .param p1, "sipAutomata"    # Z

    .prologue
    .line 574
    iput-boolean p1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->sipAutomata:Z

    .line 575
    return-void
.end method

.method public setSocialPresenceSupport(Z)V
    .locals 0
    .param p1, "supported"    # Z

    .prologue
    .line 395
    iput-boolean p1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->socialPresence:Z

    .line 396
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 618
    iput-wide p1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->timestamp:J

    .line 619
    return-void
.end method

.method public setVideoSharingSupport(Z)V
    .locals 0
    .param p1, "supported"    # Z

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->videoSharing:Z

    .line 270
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Image_share="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->imageSharing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Video_share="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->videoSharing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", IP_voice_call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->ipVoiceCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", IP_video_call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->ipVideoCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", File_transfer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransfer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Chat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->imSession:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", CS_video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->csVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Presence_discovery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->presenceDiscovery:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Social_presence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->socialPresence:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", FToHttp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransferHttp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", FT_Thumbnail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransferThumbnail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", GeolocationPush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->geolocationPush:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", SipAutomata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->sipAutomata:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", callComposer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->callComposer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sharedMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->sharedMap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sharedSketch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->sharedSketch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", postCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->postCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Extensions=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->extensions:Ljava/util/Set;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 199
    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->imageSharing:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->videoSharing:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->ipVoiceCall:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->ipVideoCall:Z

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->imSession:Z

    if-nez v1, :cond_4

    move v1, v2

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransfer:Z

    if-nez v1, :cond_5

    move v1, v2

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->csVideo:Z

    if-nez v1, :cond_6

    move v1, v2

    :goto_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->presenceDiscovery:Z

    if-nez v1, :cond_7

    move v1, v2

    :goto_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->socialPresence:Z

    if-nez v1, :cond_8

    move v1, v2

    :goto_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransferHttp:Z

    if-nez v1, :cond_9

    move v1, v2

    :goto_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->geolocationPush:Z

    if-nez v1, :cond_a

    move v1, v2

    :goto_a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransferThumbnail:Z

    if-nez v1, :cond_b

    move v1, v2

    :goto_b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->fileTransferStoreForward:Z

    if-nez v1, :cond_c

    move v1, v2

    :goto_c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->groupChatStoreForward:Z

    if-nez v1, :cond_d

    move v1, v2

    :goto_d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->callComposer:Z

    if-nez v1, :cond_e

    move v1, v2

    :goto_e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->sharedMap:Z

    if-nez v1, :cond_f

    move v1, v2

    :goto_f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->sharedSketch:Z

    if-nez v1, :cond_10

    move v1, v2

    :goto_10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->postCall:Z

    if-nez v1, :cond_11

    move v1, v2

    :goto_11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget-boolean v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->sipAutomata:Z

    if-nez v1, :cond_12

    :goto_12
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-wide v2, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->timestamp:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/capability/Capabilities;->extensions:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 220
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 221
    return-void

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    move v1, v3

    .line 199
    goto/16 :goto_0

    :cond_1
    move v1, v3

    .line 200
    goto/16 :goto_1

    :cond_2
    move v1, v3

    .line 201
    goto/16 :goto_2

    :cond_3
    move v1, v3

    .line 202
    goto/16 :goto_3

    :cond_4
    move v1, v3

    .line 203
    goto/16 :goto_4

    :cond_5
    move v1, v3

    .line 204
    goto/16 :goto_5

    :cond_6
    move v1, v3

    .line 205
    goto/16 :goto_6

    :cond_7
    move v1, v3

    .line 206
    goto :goto_7

    :cond_8
    move v1, v3

    .line 207
    goto :goto_8

    :cond_9
    move v1, v3

    .line 208
    goto :goto_9

    :cond_a
    move v1, v3

    .line 209
    goto :goto_a

    :cond_b
    move v1, v3

    .line 210
    goto :goto_b

    :cond_c
    move v1, v3

    .line 211
    goto :goto_c

    :cond_d
    move v1, v3

    .line 212
    goto :goto_d

    :cond_e
    move v1, v3

    .line 213
    goto :goto_e

    :cond_f
    move v1, v3

    .line 214
    goto :goto_f

    :cond_10
    move v1, v3

    .line 215
    goto :goto_10

    :cond_11
    move v1, v3

    .line 216
    goto :goto_11

    :cond_12
    move v2, v3

    .line 217
    goto :goto_12
.end method
