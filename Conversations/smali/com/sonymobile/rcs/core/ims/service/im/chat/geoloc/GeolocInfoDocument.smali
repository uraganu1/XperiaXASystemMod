.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;
.super Ljava/lang/Object;
.source "GeolocInfoDocument.java"


# instance fields
.field private altitude:D

.field private entity:Ljava/lang/String;

.field private expiration:J

.field private label:Ljava/lang/String;

.field private latitude:D

.field private longitude:D

.field private radius:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "entity"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->entity:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->label:Ljava/lang/String;

    .line 45
    iput-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->latitude:D

    .line 50
    iput-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->longitude:D

    .line 55
    iput-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->altitude:D

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->expiration:J

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->radius:F

    .line 73
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->entity:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public getAltitude()D
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->altitude:D

    return-wide v0
.end method

.method public getExpiration()J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->expiration:J

    return-wide v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->longitude:D

    return-wide v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->radius:F

    return v0
.end method

.method public setAltitude(D)V
    .locals 1
    .param p1, "a"    # D

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->altitude:D

    .line 122
    return-void
.end method

.method public setExpiration(J)V
    .locals 1
    .param p1, "expiration"    # J

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->expiration:J

    .line 98
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->label:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "l"    # D

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->latitude:D

    .line 106
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "l"    # D

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->longitude:D

    .line 114
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "r"    # F

    .prologue
    .line 129
    iput p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->radius:F

    .line 130
    return-void
.end method
