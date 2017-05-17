.class public Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;
.super Ljava/lang/Object;
.source "PresenceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private favoriteLink:Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;

.field private freetext:Ljava/lang/String;

.field private geoloc:Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;

.field private photo:Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

.field private status:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo$1;

    invoke-direct {v0}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo$1;-><init>()V

    sput-object v0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->timestamp:J

    const-string/jumbo v0, "open"

    .line 87
    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->status:Ljava/lang/String;

    .line 92
    iput-object v2, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->freetext:Ljava/lang/String;

    .line 97
    iput-object v2, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->favoriteLink:Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;

    .line 102
    iput-object v2, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->photo:Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    .line 107
    iput-object v2, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->geoloc:Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->timestamp:J

    const-string/jumbo v1, "open"

    .line 87
    iput-object v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->status:Ljava/lang/String;

    .line 92
    iput-object v4, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->freetext:Ljava/lang/String;

    .line 97
    iput-object v4, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->favoriteLink:Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;

    .line 102
    iput-object v4, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->photo:Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    .line 107
    iput-object v4, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->geoloc:Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->timestamp:J

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->status:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->freetext:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    int-to-byte v0, v1

    .line 126
    .local v0, "flag":B
    if-gtz v0, :cond_0

    .line 129
    iput-object v4, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->favoriteLink:Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;

    .line 132
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    int-to-byte v0, v1

    .line 133
    if-gtz v0, :cond_1

    .line 136
    iput-object v4, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->photo:Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    .line 139
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    int-to-byte v0, v1

    .line 140
    if-gtz v0, :cond_2

    .line 143
    iput-object v4, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->geoloc:Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;

    .line 145
    :goto_2
    return-void

    .line 127
    :cond_0
    sget-object v1, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;

    iput-object v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->favoriteLink:Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;

    goto :goto_0

    .line 134
    :cond_1
    sget-object v1, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    iput-object v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->photo:Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    goto :goto_1

    .line 141
    :cond_2
    sget-object v1, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;

    iput-object v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->geoloc:Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;

    goto :goto_2
.end method

.method public static getNewTimestamp()J
    .locals 2

    .prologue
    .line 234
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 154
    return v0
.end method

.method public getFavoriteLink()Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->favoriteLink:Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;

    return-object v0
.end method

.method public getFavoriteLinkUrl()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 307
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->favoriteLink:Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;

    if-nez v1, :cond_0

    .line 310
    .end local v0    # "url":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 308
    .restart local v0    # "url":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->favoriteLink:Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->getLink()Ljava/lang/String;

    move-result-object v0

    .local v0, "url":Ljava/lang/String;
    goto :goto_0
.end method

.method public getFreetext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->freetext:Ljava/lang/String;

    return-object v0
.end method

.method public getGeoloc()Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->geoloc:Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;

    return-object v0
.end method

.method public getPhotoIcon()Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->photo:Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    return-object v0
.end method

.method public getPresenceStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->timestamp:J

    return-wide v0
.end method

.method public isOffline()Z
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->status:Ljava/lang/String;

    const-string/jumbo v1, "closed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOnline()Z
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->status:Ljava/lang/String;

    const-string/jumbo v1, "open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public resetTimestamp()V
    .locals 2

    .prologue
    .line 225
    invoke-static {}, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->getNewTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->timestamp:J

    .line 226
    return-void
.end method

.method public setFavoriteLink(Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;)V
    .locals 0
    .param p1, "favoriteLink"    # Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->favoriteLink:Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;

    .line 320
    return-void
.end method

.method public setFavoriteLinkUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->favoriteLink:Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;

    if-eqz v0, :cond_0

    .line 331
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->favoriteLink:Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->setLink(Ljava/lang/String;)V

    .line 332
    return-void

    .line 329
    :cond_0
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;

    invoke-direct {v0, p1}, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->favoriteLink:Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;

    goto :goto_0
.end method

.method public setFreetext(Ljava/lang/String;)V
    .locals 0
    .param p1, "freetext"    # Ljava/lang/String;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->freetext:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setGeoloc(Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;)V
    .locals 0
    .param p1, "geoloc"    # Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->geoloc:Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;

    .line 366
    return-void
.end method

.method public setPhotoIcon(Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;)V
    .locals 0
    .param p1, "photo"    # Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->photo:Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    .line 348
    return-void
.end method

.method public setPresenceStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->status:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 209
    iput-wide p1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->timestamp:J

    .line 210
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "- Timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "- Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "- Freetext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->freetext:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->favoriteLink:Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;

    if-nez v1, :cond_0

    .line 379
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->photo:Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    if-nez v1, :cond_1

    .line 382
    :goto_1
    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->geoloc:Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;

    if-nez v1, :cond_2

    .line 385
    :goto_2
    return-object v0

    .line 377
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "- Favorite link: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->favoriteLink:Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 380
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "- Photo-icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->photo:Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 383
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "- Geoloc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->geoloc:Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    iget-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 165
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->freetext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->favoriteLink:Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 175
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->photo:Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    if-nez v0, :cond_1

    .line 179
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 182
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->geoloc:Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;

    if-nez v0, :cond_2

    .line 186
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 188
    :goto_2
    return-void

    .line 169
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 170
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->favoriteLink:Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/rcs/service/api/client/presence/FavoriteLink;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 177
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->photo:Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 183
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 184
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/PresenceInfo;->geoloc:Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2
.end method
