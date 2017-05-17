.class public Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;
.super Ljava/lang/Object;
.source "Geopriv.java"


# instance fields
.field private altitude:D

.field private latitude:D

.field private longitude:D

.field private method:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;->method:Ljava/lang/String;

    .line 24
    iput-wide v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;->latitude:D

    .line 26
    iput-wide v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;->longitude:D

    .line 28
    iput-wide v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;->altitude:D

    .line 31
    return-void
.end method


# virtual methods
.method public getAltitude()D
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;->altitude:D

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;->longitude:D

    return-wide v0
.end method

.method public setAltitude(D)V
    .locals 1
    .param p1, "a"    # D

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;->altitude:D

    .line 63
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "l"    # D

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;->latitude:D

    .line 47
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "l"    # D

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;->longitude:D

    .line 55
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "met"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/geoloc/Geopriv;->method:Ljava/lang/String;

    .line 39
    return-void
.end method
