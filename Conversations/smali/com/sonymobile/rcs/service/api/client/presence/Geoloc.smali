.class public Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;
.super Ljava/lang/Object;
.source "Geoloc.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private altitude:D

.field private latitude:D

.field private longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc$1;

    invoke-direct {v0}, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc$1;-><init>()V

    sput-object v0, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "altitude"    # D

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;->latitude:D

    .line 54
    iput-wide p3, p0, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;->longitude:D

    .line 55
    iput-wide p5, p0, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;->altitude:D

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;->latitude:D

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;->longitude:D

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;->altitude:D

    .line 67
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;->altitude:D

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;->longitude:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;->altitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

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
    .line 86
    iget-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 87
    iget-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 88
    iget-wide v0, p0, Lcom/sonymobile/rcs/service/api/client/presence/Geoloc;->altitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 89
    return-void
.end method
