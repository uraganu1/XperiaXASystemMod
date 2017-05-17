.class public Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;
.super Ljava/lang/Object;
.source "GeolocPush.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accuracy:F

.field private altitude:D

.field private expiration:J

.field private label:Ljava/lang/String;

.field private latitude:D

.field private longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush$1;

    invoke-direct {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush$1;-><init>()V

    sput-object v0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->accuracy:F

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->label:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->latitude:D

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->longitude:D

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->altitude:D

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->expiration:J

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->accuracy:F

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDDJ)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "expiration"    # J

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->accuracy:F

    .line 75
    iput-object p1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->label:Ljava/lang/String;

    .line 76
    iput-wide p2, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->latitude:D

    .line 77
    iput-wide p4, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->longitude:D

    .line 78
    iput-wide p6, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->altitude:D

    .line 79
    iput-wide p8, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->expiration:J

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDDJF)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "expiration"    # J
    .param p10, "accuracy"    # F

    .prologue
    .line 94
    invoke-direct/range {p0 .. p9}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;-><init>(Ljava/lang/String;DDDJ)V

    .line 96
    iput p10, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->accuracy:F

    .line 97
    return-void
.end method

.method public static formatGeolocToStr(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;)Ljava/lang/String;
    .locals 4
    .param p0, "geoloc"    # Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "label":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 281
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->getExpiration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v0, ""

    .line 279
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    return v0
.end method

.method public getAccuracy()F
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->accuracy:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->altitude:D

    return-wide v0
.end method

.method public getExpiration()J
    .locals 2

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->expiration:J

    return-wide v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->longitude:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->altitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Expiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->expiration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->accuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 132
    iget-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 133
    iget-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->altitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 134
    iget-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->expiration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    iget v0, p0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->accuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 136
    return-void
.end method
